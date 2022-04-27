.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_RateAlerts_RisingProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidePredictiveRateSetting_RateAlerts_RisingProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_RateAlerts_Rising"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "providePredictiveRateSetting_RateAlerts_Rising"

    .line 2397
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2398
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_RateAlerts_RisingProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 2399
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_RateAlerts_RisingProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;
    .locals 1

    .line 2408
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_RateAlerts_RisingProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->providePredictiveRateSetting_RateAlerts_Rising()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2393
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_RateAlerts_RisingProvidesAdapter;->get()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    move-result-object v0

    return-object v0
.end method
