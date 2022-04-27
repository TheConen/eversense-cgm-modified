.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlertsProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidePredictiveRateSetting_PredictiveAlertsProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_PredictiveAlerts"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "providePredictiveRateSetting_PredictiveAlerts"

    .line 2264
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2265
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlertsProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 2266
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlertsProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;
    .locals 1

    .line 2275
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlertsProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->providePredictiveRateSetting_PredictiveAlerts()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2260
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlertsProvidesAdapter;->get()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    move-result-object v0

    return-object v0
.end method
