.class public Lcom/senseonics/view/DrawerMenu/DrawerMenu;
.super Ljava/lang/Object;
.source "DrawerMenu.java"

# interfaces
.implements Lcom/senseonics/account/UserProfilePresenter$UserProfileView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;
    }
.end annotation


# static fields
.field private static currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field private static previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private germanyManager:Lcom/senseonics/account/GermanyManager;

.field private menuItemList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/senseonics/view/DrawerMenu/MenuModel;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private scrollView:Landroid/widget/ScrollView;

.field private swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

.field private userImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private userProfileDivider:Landroid/view/View;

.field private userProfileLayout:Landroid/widget/RelativeLayout;

.field private userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

.field private username:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 52
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/account/GermanyManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

    .line 65
    iput-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 66
    iput-object p4, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->germanyManager:Lcom/senseonics/account/GermanyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Landroid/widget/ScrollView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$100()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 41
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

.method static synthetic access$200(Lcom/senseonics/view/DrawerMenu/DrawerMenu;)Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    return-object p0
.end method

.method private initializeDrawerMenu()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/senseonics/view/DrawerMenu/DrawerItems;->getMenuItems(Landroid/app/Activity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    .line 207
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 208
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f0901d4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->scrollView:Landroid/widget/ScrollView;

    .line 210
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f090306

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 211
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setSwipeableChildren([I)V

    .line 213
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f09038c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    .line 214
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f09038b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileDivider:Landroid/view/View;

    .line 216
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;

    iget-object v3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x7f1100eb

    const v6, 0x7f1100ea

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$1;-><init>(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 228
    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refresh()V

    return-void

    :array_0
    .array-data 4
        0x7f0901d4
        0x1020004
    .end array-data
.end method

.method private refreshMenuItemLayouts()V
    .locals 8

    .line 234
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/view/DrawerMenu/MenuModel;

    .line 236
    invoke-virtual {v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;->isActive()Z

    move-result v5

    .line 237
    sget-object v6, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getMenuType()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    .line 239
    :goto_1
    iget-object v3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v3, v1, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 240
    iget-object v3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090198

    .line 242
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 243
    invoke-virtual {v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getDrawableId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v5, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const v6, 0x3e851eb8    # 0.26f

    .line 244
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    const v3, 0x7f09032f

    .line 246
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    invoke-virtual {v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getMenuName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    const v7, 0x7f060021

    goto :goto_3

    :cond_2
    const v7, 0x7f06008a

    :goto_3
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    const v2, 0x7f060082

    goto :goto_4

    :cond_3
    const v2, 0x7f060106

    :goto_4
    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v5, :cond_4

    .line 252
    new-instance v2, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;

    invoke-direct {v2, p0, v4}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$2;-><init>(Lcom/senseonics/view/DrawerMenu/DrawerMenu;Lcom/senseonics/view/DrawerMenu/MenuModel;)V

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 260
    :cond_5
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 265
    :cond_6
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :goto_6
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v1, 0x7f090276

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 271
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->addMyAccountPage()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x4

    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public attachDrawer()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V

    :cond_0
    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method

.method public detachDrawer()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {v0}, Lcom/senseonics/account/UserProfilePresenter;->detach()V

    :cond_0
    return-void
.end method

.method public displayProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    iget-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->username:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {p1, p2, p3}, Lcom/senseonics/view/GlideHelper;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public getCurrentMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 102
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

.method public getDrawerToggle()Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method public getPreviousMenu()Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 98
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

.method public getRes()Landroid/content/res/Resources;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public goToLogin()V
    .locals 0

    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public openDrawer()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfilePresenter:Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {v0}, Lcom/senseonics/account/UserProfilePresenter;->loadProfile()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    const-string v2, "drawer_menu_calibrate"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    invoke-virtual {v1, v0}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    .line 108
    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    const-string v2, "drawer_menu_placement"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    invoke-virtual {v1, v0}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    .line 109
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->menuItemList:Ljava/util/LinkedHashMap;

    const-string v1, "drawer_menu_share"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/DrawerMenu/MenuModel;

    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v1}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    .line 110
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V

    return-void
.end method

.method public selectItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->previousMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 87
    sput-object p1, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 88
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->refreshMenuItemLayouts()V

    .line 90
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->closeDrawer()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->currentMenu:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-interface {p1, v0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;->onItemSelected(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    :goto_0
    return-void
.end method

.method public setItemSelectedListener(Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->callback:Lcom/senseonics/view/DrawerMenu/DrawerMenu$DrawerMenuCallback;

    return-void
.end method

.method public setupDrawer()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->initializeDrawerMenu()V

    return-void
.end method

.method public setupProfileViews(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 138
    iget-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v0, 0x7f09038d

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->username:Landroid/widget/TextView;

    .line 139
    iget-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    const v0, 0x7f09038e

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 140
    iget-object p3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    invoke-virtual {p3, p1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 141
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->userProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 174
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    .line 176
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V
    .locals 0

    return-void
.end method

.method public showDialogWithCustomMessage(ILjava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 0

    return-void
.end method

.method public showDialogWithCustomStackedButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V
    .locals 6

    .line 196
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 197
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 198
    invoke-virtual {p1, p6}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomLeftButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 199
    invoke-virtual {p1, p7}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomRightButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    const/4 p2, 0x1

    .line 200
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withButtonsStacked(Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    .line 201
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithTitleBold(IZIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 0

    return-void
.end method

.method public showProfileImageSelector(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 3

    .line 146
    iget-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->addMyAccountPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/senseonics/account/MyAccountActivity;

    goto :goto_0

    :cond_0
    const-class v2, Lcom/senseonics/account/ProfileImageSelectActivity;

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->swipeRefreshLayout:Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
