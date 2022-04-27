.class Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;
.super Ljava/lang/IllegalStateException;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/codegen/GraphAnalysisProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModuleValidationException"
.end annotation


# instance fields
.field final source:Ljavax/lang/model/element/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 386
    iput-object p2, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->source:Ljavax/lang/model/element/Element;

    return-void
.end method
