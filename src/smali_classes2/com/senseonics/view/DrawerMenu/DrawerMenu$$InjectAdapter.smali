.class public final Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "DrawerMenu$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/view/DrawerMenu/DrawerMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private germanyManager:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/account/GermanyManager;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private userProfilePresenter:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/account/UserProfilePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    const-string v1, "com.senseonics.view.DrawerMenu.DrawerMenu"

    const-string v2, "members/com.senseonics.view.DrawerMenu.DrawerMenu"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 44
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.app.Activity"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->activity:Ldaggero/internal/Binding;

    .line 45
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.account.UserProfilePresenter"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->userProfilePresenter:Ldaggero/internal/Binding;

    .line 46
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->model:Ldaggero/internal/Binding;

    .line 47
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.account.GermanyManager"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->germanyManager:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/view/DrawerMenu/DrawerMenu;
    .locals 5

    .line 68
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->activity:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->userProfilePresenter:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/account/UserProfilePresenter;

    iget-object v3, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v4, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->germanyManager:Ldaggero/internal/Binding;

    invoke-virtual {v4}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/account/GermanyManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;-><init>(Landroid/app/Activity;Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/account/GermanyManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->get()Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldaggero/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldaggero/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 56
    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->activity:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->userProfilePresenter:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->model:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p0, Lcom/senseonics/view/DrawerMenu/DrawerMenu$$InjectAdapter;->germanyManager:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
