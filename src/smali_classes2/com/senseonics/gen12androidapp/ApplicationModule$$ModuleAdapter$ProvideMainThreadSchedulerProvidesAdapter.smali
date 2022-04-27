.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideMainThreadSchedulerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "com.senseonics.gen12androidapp.rx.MainThreadScheduler"

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideMainThreadScheduler"

    .line 1172
    invoke-direct {p0, v1, v0, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1173
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    .line 1174
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMainThreadScheduler()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1168
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->get()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    move-result-object v0

    return-object v0
.end method
