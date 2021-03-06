.class public Lcom/senseonics/util/PreferenceObjectSaverRetriver;
.super Ljava/lang/Object;
.source "PreferenceObjectSaverRetriver.java"


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getSensorGlucoseAlertStatus(Ljava/lang/String;)[I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget p1, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->STATUS_FLAGS_COUNT:I

    new-array p1, p1, [I

    return-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    const-class v1, [I

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public retrieveGlucoseProfileFromPreference(Ljava/lang/String;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    const-class v1, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    return-object p1
.end method

.method public saveGlucoseProfileIntoPreference(Ljava/lang/String;Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 23
    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSensorGlucoseAlertStatus(Ljava/lang/String;[I)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
