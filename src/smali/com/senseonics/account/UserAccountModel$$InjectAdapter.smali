.class public final Lcom/senseonics/account/UserAccountModel$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "UserAccountModel$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/account/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private secureStorer:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/UserInfoSecureStorer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    const-class v0, Lcom/senseonics/account/UserAccountModel;

    const-string v1, "com.senseonics.account.UserAccountModel"

    const-string v2, "members/com.senseonics.account.UserAccountModel"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 38
    const-class v0, Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AccountConstants"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->accountConstants:Ldaggero/internal/Binding;

    .line 39
    const-class v0, Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.UserInfoSecureStorer"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->secureStorer:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/account/UserAccountModel;
    .locals 3

    .line 58
    new-instance v0, Lcom/senseonics/account/UserAccountModel;

    iget-object v1, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->accountConstants:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/AccountConstants;

    iget-object v2, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->secureStorer:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/account/UserAccountModel;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/UserInfoSecureStorer;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->get()Lcom/senseonics/account/UserAccountModel;

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

    .line 48
    iget-object p2, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->accountConstants:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p2, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->secureStorer:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
