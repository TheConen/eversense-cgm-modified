.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Ljava/util/Map<",
        "[I",
        "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;

.field private readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedSpikeFourByteMemoryParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedValueFourByteMemoryParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterModelNoFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=readfourbyteregisters)/java.util.Map<int[], com.senseonics.model.FourByteMemoryMapParsedResponse>"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideMapOfInArrayToFourByteMemoryMapParsedResponse"

    .line 947
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 948
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 949
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 959
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.LinkedSensorIdAddressFourByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 960
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 961
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterModelNoFourByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterModelNoFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 962
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterFirmwareVersionFourByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 963
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    .line 964
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadMEPSavedValueFourByteMemoryParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedValueFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    .line 965
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    .line 966
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadMEPSavedDriftMetricFourByteMemoryParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    .line 967
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    .line 968
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadMEPSavedSpikeFourByteMemoryParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedSpikeFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    .line 969
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterModelNoFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v3}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v4}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v5}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedValueFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v6}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;

    iget-object v7, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v7}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;

    iget-object v8, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v8}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;

    iget-object v9, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v9}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;

    iget-object v10, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedSpikeFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v10}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;

    iget-object v11, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v11}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;

    invoke-virtual/range {v0 .. v11}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMapOfInArrayToFourByteMemoryMapParsedResponse(Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;)Ljava/util/Map;

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

    .line 979
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterModelNoFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedValueFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedSpikeFourByteMemoryParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
