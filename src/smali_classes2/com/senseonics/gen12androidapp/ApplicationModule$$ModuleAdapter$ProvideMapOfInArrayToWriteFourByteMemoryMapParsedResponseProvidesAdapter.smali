.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter"
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
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;

.field private writeTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/WriteTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private writeTransmitterNameLastFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "Lcom/senseonics/model/WriteTransmitterNameLastFourByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=writefourbyteregisters)/java.util.Map<int[], com.senseonics.model.FourByteMemoryMapParsedResponse>"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideMapOfInArrayToWriteFourByteMemoryMapParsedResponse"

    .line 1021
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1022
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 1023
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 1033
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.WriteTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->writeTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;

    .line 1034
    const-class v0, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.WriteTransmitterNameLastFourByteSerialFlashRegisterParsedResponse"

    invoke-virtual {p1, v2, v0, v1}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->writeTransmitterNameLastFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1012
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->writeTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v1}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/WriteTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->writeTransmitterNameLastFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;

    invoke-virtual {v2}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/WriteTransmitterNameLastFourByteSerialFlashRegisterParsedResponse;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMapOfInArrayToWriteFourByteMemoryMapParsedResponse(Lcom/senseonics/model/WriteTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/WriteTransmitterNameLastFourByteSerialFlashRegisterParsedResponse;)Ljava/util/Map;

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

    .line 1044
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->writeTransmitterNameFirstFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1045
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteFourByteMemoryMapParsedResponseProvidesAdapter;->writeTransmitterNameLastFourByteSerialFlashRegisterParsedResponse:Ldaggero/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
