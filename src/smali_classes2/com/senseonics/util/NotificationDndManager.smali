.class public Lcom/senseonics/util/NotificationDndManager;
.super Ljava/lang/Object;
.source "NotificationDndManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final DEFAULT_RINGTONE_DURATION:I

.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private dnd:I

.field private liveSessionCount:I

.field private maxMusicVolume:I

.field private musicVolume:I

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/media/AudioManager;Lcom/senseonics/util/NotificationMediaPlayer;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 24
    iput v0, p0, Lcom/senseonics/util/NotificationDndManager;->DEFAULT_RINGTONE_DURATION:I

    .line 42
    iput-object p1, p0, Lcom/senseonics/util/NotificationDndManager;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/senseonics/util/NotificationDndManager;->notificationManager:Landroid/app/NotificationManager;

    .line 44
    iput-object p3, p0, Lcom/senseonics/util/NotificationDndManager;->audioManager:Landroid/media/AudioManager;

    .line 45
    iput-object p4, p0, Lcom/senseonics/util/NotificationDndManager;->notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;

    const/4 p1, 0x3

    .line 47
    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/util/NotificationDndManager;->maxMusicVolume:I

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/util/NotificationDndManager;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/senseonics/util/NotificationDndManager;->maxMusicVolume:I

    return p0
.end method

.method static synthetic access$100(Lcom/senseonics/util/NotificationDndManager;)Landroid/media/AudioManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/senseonics/util/NotificationDndManager;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/util/NotificationDndManager;)Lcom/senseonics/util/NotificationMediaPlayer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/senseonics/util/NotificationDndManager;->notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/util/NotificationDndManager;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    return p0
.end method

.method static synthetic access$310(Lcom/senseonics/util/NotificationDndManager;)I
    .locals 2

    .line 23
    iget v0, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/senseonics/util/NotificationDndManager;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/senseonics/util/NotificationDndManager;->musicVolume:I

    return p0
.end method

.method static synthetic access$500(Lcom/senseonics/util/NotificationDndManager;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/senseonics/util/NotificationDndManager;->dnd:I

    return p0
.end method

.method static synthetic access$600(Lcom/senseonics/util/NotificationDndManager;)Landroid/app/NotificationManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/senseonics/util/NotificationDndManager;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private getSoundDuration(Landroid/net/Uri;)J
    .locals 4

    .line 109
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/senseonics/util/NotificationDndManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 111
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x7d0

    :goto_0
    return-wide v0

    .line 118
    :goto_1
    throw p1
.end method

.method private playCriticalAlarm(Landroid/net/Uri;)V
    .locals 4

    .line 65
    iget v0, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v0

    iput v0, p0, Lcom/senseonics/util/NotificationDndManager;->dnd:I

    .line 68
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/util/NotificationDndManager;->musicVolume:I

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get current setting | DND:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/util/NotificationDndManager;->dnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", music volume:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/util/NotificationDndManager;->musicVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/util/NotificationDndManager;->maxMusicVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), session count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/util/NotificationDndManager;->liveSessionCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DND_DEBUG"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/senseonics/util/NotificationDndManager$1;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/NotificationDndManager$1;-><init>(Lcom/senseonics/util/NotificationDndManager;Landroid/net/Uri;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationDndManager;->getSoundDuration(Landroid/net/Uri;)J

    move-result-wide v0

    .line 91
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/senseonics/util/NotificationDndManager$2;

    invoke-direct {v2, p0}, Lcom/senseonics/util/NotificationDndManager$2;-><init>(Lcom/senseonics/util/NotificationDndManager;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isOverrideDndAccessGranted()Z
    .locals 1

    .line 137
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid6OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverrideDndAvailable()Z
    .locals 1

    .line 123
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid6OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->overrideDndCriticalAlertSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverridePhoneSettingLowGlucoseAlarmEnabled()Z
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/senseonics/util/NotificationDndManager;->isOverrideDndAccessGranted()Z

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/senseonics/util/NotificationDndManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "IsOverridePhoneSettingLowGlucoseAlarmEnabled"

    .line 146
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method play(ILandroid/net/Uri;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/util/NotificationDndManager;->isOverridePhoneSettingLowGlucoseAlarmEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-direct {p0, p2}, Lcom/senseonics/util/NotificationDndManager;->playCriticalAlarm(Landroid/net/Uri;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/NotificationDndManager;->notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;

    invoke-virtual {p1, p2}, Lcom/senseonics/util/NotificationMediaPlayer;->play(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setIsOverridePhoneSettingLowGlucoseAlarmEnabled(Z)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager;->context:Landroid/content/Context;

    const-string v1, "IsOverridePhoneSettingLowGlucoseAlarmEnabled"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldAlwaysDisableOverride()Z
    .locals 1

    .line 133
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid6OrAbove()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldHideOverride()Z
    .locals 1

    .line 128
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->overrideDndCriticalAlertSettings()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
