.class public final Lcom/senseonics/util/NotificationMediaPlayer$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "NotificationMediaPlayer$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/util/NotificationMediaPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    const-class v0, Lcom/senseonics/util/NotificationMediaPlayer;

    const-string v1, "com.senseonics.util.NotificationMediaPlayer"

    const-string v2, "members/com.senseonics.util.NotificationMediaPlayer"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 35
    const-class v0, Lcom/senseonics/util/NotificationMediaPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/NotificationMediaPlayer$$InjectAdapter;->context:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/NotificationMediaPlayer;
    .locals 2

    .line 53
    new-instance v0, Lcom/senseonics/util/NotificationMediaPlayer;

    iget-object v1, p0, Lcom/senseonics/util/NotificationMediaPlayer$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/senseonics/util/NotificationMediaPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/senseonics/util/NotificationMediaPlayer$$InjectAdapter;->get()Lcom/senseonics/util/NotificationMediaPlayer;

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

    .line 44
    iget-object p2, p0, Lcom/senseonics/util/NotificationMediaPlayer$$InjectAdapter;->context:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
