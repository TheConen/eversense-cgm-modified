.class Ldaggero/internal/codegen/GraphAnalysisProcessor$1;
.super Ldaggero/internal/BindingsGroup;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaggero/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldaggero/internal/codegen/GraphAnalysisProcessor;


# direct methods
.method constructor <init>(Ldaggero/internal/codegen/GraphAnalysisProcessor;)V
    .locals 0

    .line 178
    iput-object p1, p0, Ldaggero/internal/codegen/GraphAnalysisProcessor$1;->this$0:Ldaggero/internal/codegen/GraphAnalysisProcessor;

    invoke-direct {p0}, Ldaggero/internal/BindingsGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldaggero/internal/SetBinding;)Ldaggero/internal/Binding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldaggero/internal/SetBinding<",
            "*>;)",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 180
    invoke-super {p0, p1, p2}, Ldaggero/internal/BindingsGroup;->put(Ljava/lang/String;Ldaggero/internal/Binding;)Ldaggero/internal/Binding;

    move-result-object p1

    return-object p1
.end method
