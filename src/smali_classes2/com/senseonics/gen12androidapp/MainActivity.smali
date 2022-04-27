.class public Lcom/senseonics/gen12androidapp/MainActivity;
.super Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/ActivityWithNavigationBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/MainActivity$MainTask;
    }
.end annotation


# static fields
.field public static final RESULT_DELETED:I = 0x12f

.field public static glucoseLevel:I


# instance fields
.field private aboutFragment:Lcom/senseonics/fragments/AboutFragment;

.field protected bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field bluetoothEnabler:Lcom/senseonics/pairing/BluetoothEnabler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private calibrateFragment:Lcom/senseonics/fragments/CalibrateFragment;

.field private calibrationManager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

.field private connectionStatusFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

.field private doubleBackToExitPressedOnce:Z

.field drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private eventLogFragment:Lcom/senseonics/fragments/EventLogFragment;

.field private fragmentManager:Landroid/app/FragmentManager;

.field private graphFragment:Lcom/senseonics/fragments/GraphFragment;

.field private naviBarLayout:Landroid/widget/RelativeLayout;

.field private naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

.field public naviBarRightItemTextView:Landroid/widget/TextView;

.field private naviBarTitle:Landroid/widget/TextView;

.field private notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

.field private placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

.field private refreshButton:Landroid/widget/ImageButton;

.field private settingsFragment:Lcom/senseonics/fragments/SettingsFragment;

.field private shareMyDataFragment:Lcom/senseonics/fragments/ShareMyDataFragment;

.field private statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

.field private statusBarDrawerButton:Landroid/widget/ImageView;

.field private statusBarLayout:Landroid/widget/LinearLayout;

.field private statusBarTextView:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    sput v0, Lcom/senseonics/gen12androidapp/MainActivity;->glucoseLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/senseonics/gen12androidapp/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MainActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->calibrationManager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->doubleBackToExitPressedOnce:Z

    return-void
.end method

.method private ShouldSwitchToConnectionStatus()Z
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/NotificationDeviceStatus;

    .line 641
    invoke-virtual {v0}, Lcom/senseonics/view/NotificationDeviceStatus;->isDisplayingConnectionState()Z

    move-result v0

    return v0
.end method

.method private SwitchToAppropriatePageByTappingHeader()V
    .locals 1

    .line 645
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->ShouldSwitchToConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->switchToConnectionStatusLocal()V

    goto :goto_0

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->switchToNotificationLocal()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/MainActivity;Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->transitFragment(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/MainActivity;)Lcom/senseonics/fragments/StatisticsFragment;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

    return-object p0
.end method

.method static synthetic access$302(Lcom/senseonics/gen12androidapp/MainActivity;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->doubleBackToExitPressedOnce:Z

    return p1
.end method

.method static synthetic access$400(Lcom/senseonics/gen12androidapp/MainActivity;)Lcom/senseonics/fragments/GraphFragment;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    return-object p0
.end method

.method private goToLoginPageForeground()V
    .locals 3

    .line 677
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "force_logout"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 681
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->finish()V

    :cond_0
    return-void
.end method

.method private hideNaviBarRightTextAndImage()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private nullifyPreviousFragment(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 380
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getPreviousMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object p1

    .line 382
    sget-object p2, Lcom/senseonics/gen12androidapp/MainActivity$8;->$SwitchMap$com$senseonics$view$DrawerMenu$DrawerItems$MENU_ITEM:[I

    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 411
    :pswitch_0
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->shareMyDataFragment:Lcom/senseonics/fragments/ShareMyDataFragment;

    goto :goto_0

    .line 402
    :pswitch_1
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

    goto :goto_0

    .line 408
    :pswitch_2
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->settingsFragment:Lcom/senseonics/fragments/SettingsFragment;

    goto :goto_0

    .line 399
    :pswitch_3
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

    goto :goto_0

    .line 393
    :pswitch_4
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

    goto :goto_0

    .line 384
    :pswitch_5
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    goto :goto_0

    .line 390
    :pswitch_6
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->eventLogFragment:Lcom/senseonics/fragments/EventLogFragment;

    goto :goto_0

    .line 396
    :pswitch_7
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->connectionStatusFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    goto :goto_0

    .line 387
    :pswitch_8
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->calibrateFragment:Lcom/senseonics/fragments/CalibrateFragment;

    goto :goto_0

    .line 405
    :pswitch_9
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->aboutFragment:Lcom/senseonics/fragments/AboutFragment;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private replaceFragment(Landroid/app/Fragment;)V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900df

    .line 497
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static saveFirstRun(Landroid/content/Context;)V
    .locals 2

    const-string v0, "firstRun"

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private switchToConnectionStatusLocal()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method private switchToHomeLocal()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method private switchToNotificationLocal()V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method private transitFragment(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 2

    .line 419
    sget-object v0, Lcom/senseonics/gen12androidapp/MainActivity$8;->$SwitchMap$com$senseonics$view$DrawerMenu$DrawerItems$MENU_ITEM:[I

    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 487
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->shareMyDataFragment:Lcom/senseonics/fragments/ShareMyDataFragment;

    if-nez p1, :cond_0

    .line 488
    new-instance p1, Lcom/senseonics/fragments/ShareMyDataFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/ShareMyDataFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->shareMyDataFragment:Lcom/senseonics/fragments/ShareMyDataFragment;

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->shareMyDataFragment:Lcom/senseonics/fragments/ShareMyDataFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 469
    :pswitch_1
    new-instance p1, Lcom/senseonics/fragments/StatisticsFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/StatisticsFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

    .line 470
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 480
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->settingsFragment:Lcom/senseonics/fragments/SettingsFragment;

    if-nez p1, :cond_1

    .line 481
    new-instance p1, Lcom/senseonics/fragments/SettingsFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/SettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->settingsFragment:Lcom/senseonics/fragments/SettingsFragment;

    .line 483
    :cond_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->settingsFragment:Lcom/senseonics/fragments/SettingsFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 463
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

    if-nez p1, :cond_2

    .line 464
    new-instance p1, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/PlacementGuideFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

    .line 466
    :cond_2
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->placementGuideFragment:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 447
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

    if-nez p1, :cond_3

    .line 451
    new-instance p1, Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/NotificationsFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

    .line 454
    :cond_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 421
    :pswitch_5
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    if-nez p1, :cond_4

    .line 422
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->initGlucoseLevels()V

    .line 426
    new-instance p1, Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/GraphFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    .line 429
    :cond_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    .line 430
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->initDates(J)V

    .line 431
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/GraphFragment;->validateGraph()V

    goto :goto_0

    .line 441
    :pswitch_6
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->eventLogFragment:Lcom/senseonics/fragments/EventLogFragment;

    if-nez p1, :cond_5

    .line 442
    new-instance p1, Lcom/senseonics/fragments/EventLogFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/EventLogFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->eventLogFragment:Lcom/senseonics/fragments/EventLogFragment;

    .line 444
    :cond_5
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->eventLogFragment:Lcom/senseonics/fragments/EventLogFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 457
    :pswitch_7
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->connectionStatusFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    if-nez p1, :cond_6

    .line 458
    new-instance p1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-direct {p1}, Lcom/senseonics/pairing/BluetoothPairingFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->connectionStatusFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    .line 460
    :cond_6
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->connectionStatusFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 434
    :pswitch_8
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->calibrateFragment:Lcom/senseonics/fragments/CalibrateFragment;

    if-nez p1, :cond_7

    .line 435
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/CalibrateFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->calibrateFragment:Lcom/senseonics/fragments/CalibrateFragment;

    .line 436
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->calibrationManager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    invoke-virtual {p1, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setManager(Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;)V

    .line 438
    :cond_7
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->calibrateFragment:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 473
    :pswitch_9
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->aboutFragment:Lcom/senseonics/fragments/AboutFragment;

    if-nez p1, :cond_8

    .line 474
    new-instance p1, Lcom/senseonics/fragments/AboutFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/AboutFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->aboutFragment:Lcom/senseonics/fragments/AboutFragment;

    .line 476
    :cond_8
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->aboutFragment:Lcom/senseonics/fragments/AboutFragment;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity;->replaceFragment(Landroid/app/Fragment;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateGraphThresholds()V
    .locals 0

    .line 531
    invoke-static {p0}, Lcom/senseonics/util/Utils;->loadGlucoseUnit(Landroid/content/Context;)V

    .line 532
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->initGlucoseLevels()V

    return-void
.end method

.method private updateNavigationBar()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->refreshButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 296
    :cond_0
    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

    if-nez v1, :cond_1

    const-string v0, "#3640"

    const-string v1, "!!destroy me 2!!"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 301
    :cond_1
    sget-object v1, Lcom/senseonics/gen12androidapp/MainActivity$8;->$SwitchMap$com$senseonics$view$DrawerMenu$DrawerItems$MENU_ITEM:[I

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1102a8

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->hideNaviBarRightTextAndImage()V

    goto/16 :goto_0

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v3, 0x7f1102c0

    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    const v1, 0x1080052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/StatisticsFragment;->setShareButton(Landroid/widget/ImageView;)V

    .line 361
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    new-instance v1, Lcom/senseonics/gen12androidapp/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MainActivity$5;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 350
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1102a6

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->hideNaviBarRightTextAndImage()V

    goto/16 :goto_0

    .line 346
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110218

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->hideNaviBarRightTextAndImage()V

    goto/16 :goto_0

    .line 342
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1101fa

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->hideNaviBarRightTextAndImage()V

    goto/16 :goto_0

    .line 339
    :pswitch_5
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 322
    :pswitch_6
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v3, 0x7f110113

    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 330
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    new-instance v1, Lcom/senseonics/gen12androidapp/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MainActivity$4;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 315
    :pswitch_7
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v3, 0x7f110097

    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 307
    :pswitch_8
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v3, 0x7f110066

    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1102c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :pswitch_9
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v1, 0x7f11001b

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->hideNaviBarRightTextAndImage()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyDummyData()V
    .locals 12

    const-string v0, "GMT"

    .line 750
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x5

    .line 751
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 752
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    :goto_0
    move-wide v5, v0

    const/16 v0, 0x7e0

    if-gt v3, v0, :cond_2

    const-wide/32 v0, 0x493e0

    add-long/2addr v0, v5

    .line 761
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x4075e00000000000L    # 350.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    double-to-int v4, v7

    const/16 v7, 0x28

    if-gt v4, v7, :cond_0

    add-int/lit8 v4, v4, 0x28

    :cond_0
    move v7, v4

    .line 765
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/MainActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v4, v5, v6, v2}, Lcom/senseonics/db/DatabaseManager;->allowAddingGlucoseReading(JI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 766
    iget-object v10, p0, Lcom/senseonics/gen12androidapp/MainActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v11, Lcom/senseonics/graph/util/Glucose;

    const/4 v8, -0x1

    move-object v4, v11

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-virtual {v10, v11}, Lcom/senseonics/db/DatabaseManager;->addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public calculateGraphSize()V
    .locals 2

    .line 190
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    sput v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    .line 191
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    return-void
.end method

.method public getRefreshButton()Landroid/widget/ImageButton;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->refreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statisticsFragment:Lcom/senseonics/fragments/StatisticsFragment;

    return-object v0
.end method

.method public initGlucoseLevels()V
    .locals 3

    .line 268
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 269
    sget v0, Lcom/senseonics/util/Utils;->GRAPH_GLUCOSE_MIN:I

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    .line 270
    sget v0, Lcom/senseonics/util/Utils;->GRAPH_GLUCOSE_MAX:I

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    .line 272
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    sget v1, Lcom/senseonics/util/Utils;->GRAPH_GLUCOSE_MIN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->RED_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->YELLOW_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->YELLOW_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    sget v1, Lcom/senseonics/util/Utils;->GRAPH_GLUCOSE_MAX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->RED_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected isThisActivityTop()Z
    .locals 5

    .line 242
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isThisActivityTop()Z

    const-string v0, "activity"

    .line 245
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 250
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main - activity top"

    .line 249
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-ne v3, v1, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 254
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 259
    :cond_1
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.senseonics.gen12androidapp.MainActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 704
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity onActivityResult:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Tap switch"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x7531

    if-ne p1, p3, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->SwitchToAppropriatePageByTappingHeader()V

    goto :goto_0

    :cond_0
    const p1, 0x9c42

    if-ne p2, p1, :cond_1

    .line 709
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->switchToHomeLocal()V

    goto :goto_0

    :cond_1
    const p1, 0x9c41

    if-ne p2, p1, :cond_2

    const-string p1, "DMS(MainActivity)"

    const-string p2, "onActivityResult LOG_OUT_BACK_RESULT_CODE"

    .line 711
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->goToLoginPageForeground()V

    goto :goto_0

    :cond_2
    const p1, 0x9c43

    if-ne p2, p1, :cond_3

    .line 714
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->switchToHomeLocal()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-eq v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    goto :goto_0

    .line 582
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_1

    .line 583
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onBackPressed()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->doubleBackToExitPressedOnce:Z

    const v0, 0x7f11008a

    const/4 v1, 0x0

    .line 588
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 591
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/senseonics/gen12androidapp/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MainActivity$6;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 519
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 520
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getDrawerToggle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 127
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const v0, 0x7f0c00ae

    .line 132
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->setContentView(I)V

    .line 134
    invoke-static {p0}, Lcom/senseonics/util/Utils;->setPortraitScreenWidthHeight(Landroid/app/Activity;)V

    .line 136
    invoke-static {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->saveFirstRun(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    .line 140
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->calculateGraphSize()V

    .line 142
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->setupDrawer()V

    .line 143
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    new-instance v1, Lcom/senseonics/gen12androidapp/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MainActivity$2;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->setItemSelectedListener(Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;)V

    .line 150
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->initGlucoseLevels()V

    const v0, 0x7f09005d

    .line 153
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v1, -0xff0001

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v0, 0x7f090125

    .line 156
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    .line 157
    new-instance v1, Lcom/senseonics/gen12androidapp/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MainActivity$3;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090338

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarTextView:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060021

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 166
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->statusBarTextView:Landroid/widget/TextView;

    const v1, 0x7f060074

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0901c2

    .line 169
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f090241

    .line 172
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09023f

    .line 173
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f09023e

    .line 174
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const v0, 0x7f090297

    .line 175
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->refreshButton:Landroid/widget/ImageButton;

    const v0, 0x7f09023d

    .line 176
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->bluetoothEnabler:Lcom/senseonics/pairing/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothEnabler;->requestToEnableIfDisabled()V

    if-nez p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {p1, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_x"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 623
    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 624
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refresh()V

    .line 662
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationRequestEvent;)V
    .locals 3

    .line 222
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationRequestEvent;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v1

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-eq v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationRequestEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v1, p0, v0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;I)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshNotifications()V

    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/DismissPlacementGuide;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->switchToHomeLocal()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NotificationDialogEvent;)V
    .locals 3

    .line 213
    invoke-virtual {p1}, Lcom/senseonics/events/NotificationDialogEvent;->getTransmitterMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 214
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v1

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/NotificationDialogEvent;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PlacementToHomeEvent;)V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->switchToHomeLocal()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/StatusHeaderTapEvent;)V
    .locals 0

    .line 653
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->SwitchToAppropriatePageByTappingHeader()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 1

    .line 673
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    invoke-virtual {p1}, Lcom/senseonics/model/ModelChangedEvent;->getModel()Lcom/senseonics/model/TransmitterStateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result p1

    sput p1, Lcom/senseonics/gen12androidapp/MainActivity;->glucoseLevel:I

    .line 631
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->updateGraphThresholds()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getDrawerToggle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 527
    :cond_0
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 565
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onPause()V

    .line 566
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->detachDrawer()V

    .line 567
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v1, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    double-to-float v1, v1

    const-string v2, "current_x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 569
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 513
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 514
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getDrawerToggle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 537
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onResume()V

    .line 539
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->setupDrawer()V

    .line 540
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->attachDrawer()V

    .line 542
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_x"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->updateGraphThresholds()V

    .line 548
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->initDates(J)V

    .line 550
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->validateGraph()V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 555
    iput-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->timer:Ljava/util/Timer;

    .line 557
    :cond_2
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/senseonics/gen12androidapp/MainActivity;->timer:Ljava/util/Timer;

    .line 558
    new-instance v3, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;

    invoke-direct {v3, p0, v1}, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;Lcom/senseonics/gen12androidapp/MainActivity$1;)V

    const-wide/32 v4, 0x1d4c0

    const-wide/32 v6, 0x1d4c0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 560
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->goToLoginPageForeground()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 746
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 604
    new-instance v0, Lcom/senseonics/gen12androidapp/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MainActivity$7;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->graphFragment:Lcom/senseonics/fragments/GraphFragment;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->eventLogFragment:Lcom/senseonics/fragments/EventLogFragment;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/senseonics/fragments/EventLogFragment;->initData()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshAfterFragmentChanged()V
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->updateNavigationBar()V

    .line 503
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getPreviousMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->nullifyPreviousFragment(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method public refreshNotifications()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    move-result-object v0

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->notificationFragment:Lcom/senseonics/fragments/NotificationsFragment;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    :cond_0
    return-void
.end method

.method public selectMenuItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {v0, p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7531

    .line 699
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
