.class public final Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;
.super Ldaggero/internal/Binding;
.source "ReadClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    const-class v0, Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;

    const-string v1, "com.senseonics.model.ReadClinicalModeSingleByteMemoryMapParsedResponse"

    const-string v2, "members/com.senseonics.model.ReadClinicalModeSingleByteMemoryMapParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;
    .locals 1

    .line 25
    new-instance v0, Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;

    invoke-direct {v0}, Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;

    move-result-object v0

    return-object v0
.end method
