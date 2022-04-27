.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "AndroidModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideContextProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "android.content.Context"

    const-string v2, "com.senseonics.gen12androidapp.AndroidModule"

    const-string v3, "provideContext"

    .line 71
    invoke-direct {p0, v1, v0, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    .line 73
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/AndroidModule;->provideContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
