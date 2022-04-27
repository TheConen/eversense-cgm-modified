.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Ljava/util/Map<",
        "[I",
        "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;

.field private readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=writetwobyteregisters)/java.util.Map<int[], com.senseonics.model.TwoByteMemoryMapParsedResponse>"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideMapOfInArrayToWriteTwoByteMemoryMapParsedresponse"

    .line 863
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 864
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 865
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 875
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 876
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 877
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 878
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 879
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 880
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 881
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 844
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v4}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v5}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v6}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;

    iget-object v7, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v7}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;

    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMapOfInArrayToWriteTwoByteMemoryMapParsedresponse(Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;)Ljava/util/Map;

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

    .line 891
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
