.class public final Lcom/senseonics/util/AccountConstants$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "AccountConstants$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/util/AccountConstants;",
        ">;"
    }
.end annotation


# instance fields
.field private alertHelper:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/util/AlertHelper;",
            ">;"
        }
    .end annotation
.end field

.field private contextIn:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private databaseManagerIn:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateModelIn:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoSecureStorerIn:Ldaggero/internal/Binding;
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

    .line 38
    const-class v0, Lcom/senseonics/util/AccountConstants;

    const-string v1, "com.senseonics.util.AccountConstants"

    const-string v2, "members/com.senseonics.util.AccountConstants"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 48
    const-class v0, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->contextIn:Ldaggero/internal/Binding;

    .line 49
    const-class v0, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    .line 50
    const-class v0, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.UserInfoSecureStorer"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->userInfoSecureStorerIn:Ldaggero/internal/Binding;

    .line 51
    const-class v0, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->transmitterStateModelIn:Ldaggero/internal/Binding;

    .line 52
    const-class v0, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->databaseManagerIn:Ldaggero/internal/Binding;

    .line 53
    const-class v0, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AlertHelper"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->alertHelper:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/AccountConstants;
    .locals 8

    .line 76
    new-instance v7, Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->contextIn:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->userInfoSecureStorerIn:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->transmitterStateModelIn:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->databaseManagerIn:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/db/DatabaseManager;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->alertHelper:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/util/AlertHelper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/AccountConstants;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/senseonics/util/UserInfoSecureStorer;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/AlertHelper;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->get()Lcom/senseonics/util/AccountConstants;

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

    .line 62
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->contextIn:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->sharedPreferences:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->userInfoSecureStorerIn:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->transmitterStateModelIn:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->databaseManagerIn:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->alertHelper:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method