.class public final Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ActivityModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideRefreshButtonProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Landroid/widget/ImageButton;",
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

.field private final module:Lcom/senseonics/gen12androidapp/ActivityModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=REFRESH_BUTTON)/android.widget.ImageButton"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ActivityModule"

    const-string v3, "provideRefreshButton"

    .line 142
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ActivityModule;

    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 154
    const-class v0, Lcom/senseonics/gen12androidapp/ActivityModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.app.Activity"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->activity:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Landroid/widget/ImageButton;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ActivityModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->activity:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/ActivityModule;->provideRefreshButton(Landroid/app/Activity;)Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->get()Landroid/widget/ImageButton;

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

    .line 164
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;->activity:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
