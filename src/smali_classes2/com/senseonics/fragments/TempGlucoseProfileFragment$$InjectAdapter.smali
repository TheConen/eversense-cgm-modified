.class public final Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "TempGlucoseProfileFragment$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/fragments/TempGlucoseProfileFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private supertype:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/fragments/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdsController:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/ThresholdsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    const-class v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    const-string v1, "com.senseonics.fragments.TempGlucoseProfileFragment"

    const-string v2, "members/com.senseonics.fragments.TempGlucoseProfileFragment"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 7

    .line 40
    const-class v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.ThresholdsController"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->thresholdsController:Ldaggero/internal/Binding;

    .line 41
    const-class v3, Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.fragments.BaseFragment"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/fragments/TempGlucoseProfileFragment;
    .locals 1

    .line 60
    new-instance v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-direct {v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;-><init>()V

    .line 61
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->get()Lcom/senseonics/fragments/TempGlucoseProfileFragment;

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

    .line 50
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->thresholdsController:Ldaggero/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->thresholdsController:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/ThresholdsController;

    iput-object v0, p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    .line 72
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->supertype:Ldaggero/internal/Binding;

    invoke-virtual {v0, p1}, Ldaggero/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    return-void
.end method