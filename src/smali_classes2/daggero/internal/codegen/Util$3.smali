.class final Ldaggero/internal/codegen/Util$3;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/codegen/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor6<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldaggero/internal/codegen/Util$3;->defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldaggero/internal/codegen/Util$3;->visitArray(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 229
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationValue;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public bridge synthetic visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldaggero/internal/codegen/Util$3;->visitString(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitString(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    const-string p2, "<error>"

    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "<any>"

    .line 215
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 216
    :cond_0
    new-instance p1, Ldaggero/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string p2, "Unknown type returned as <any>."

    invoke-direct {p1, p2}, Ldaggero/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_1
    new-instance p1, Ldaggero/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string p2, "Unknown type returned as <error>."

    invoke-direct {p1, p2}, Ldaggero/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldaggero/internal/codegen/Util$3;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
