.class public final synthetic Lcom/squareup/javapoet/-$$Lambda$CodeBlock$yrx4IxlWAt3ulmUIi9muAR-X7hU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Lcom/squareup/javapoet/CodeBlock$Builder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$yrx4IxlWAt3ulmUIi9muAR-X7hU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$yrx4IxlWAt3ulmUIi9muAR-X7hU;->f$1:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$yrx4IxlWAt3ulmUIi9muAR-X7hU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$yrx4IxlWAt3ulmUIi9muAR-X7hU;->f$1:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-static {v0, v1}, Lcom/squareup/javapoet/CodeBlock;->lambda$joining$1(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$Builder;)Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    move-result-object v0

    return-object v0
.end method
