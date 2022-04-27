.class public final Ldaggero/internal/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# static fields
.field private static final IS_QUALIFIER_ANNOTATION:Ldaggero/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Memoizer<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAZY_PREFIX:Ljava/lang/String;

.field private static final MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

.field private static final PROVIDER_PREFIX:Ljava/lang/String;

.field private static final SET_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljavax/inject/Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldaggero/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ldaggero/MembersInjector;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldaggero/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ldaggero/Lazy;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldaggero/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldaggero/internal/Keys;->SET_PREFIX:Ljava/lang/String;

    .line 50
    new-instance v0, Ldaggero/internal/Keys$1;

    invoke-direct {v0}, Ldaggero/internal/Keys$1;-><init>()V

    sput-object v0, Ldaggero/internal/Keys;->IS_QUALIFIER_ANNOTATION:Ldaggero/internal/Memoizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 263
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 264
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 265
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 266
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 267
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 268
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 269
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 270
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 271
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Void;

    :cond_8
    return-object p0
.end method

.method private static extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;
    .locals 6

    .line 123
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 124
    sget-object v4, Ldaggero/internal/Keys;->IS_QUALIFIER_ANNOTATION:Ldaggero/internal/Memoizer;

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldaggero/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many qualifier annotations on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v1
.end method

.method public static get(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Ldaggero/internal/Keys;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 2

    .line 73
    invoke-static {p0}, Ldaggero/internal/Keys;->boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-nez p1, :cond_0

    .line 74
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p1, 0x1

    .line 81
    invoke-static {p0, v0, p1}, Ldaggero/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-static {p1, p2}, Ldaggero/internal/Keys;->extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-static {p0, p1}, Ldaggero/internal/Keys;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getBuiltInBindingsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 182
    invoke-static {p0}, Ldaggero/internal/Keys;->startOfType(Ljava/lang/String;)I

    move-result v0

    .line 183
    sget-object v1, Ldaggero/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldaggero/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldaggero/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldaggero/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 185
    :cond_0
    sget-object v1, Ldaggero/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldaggero/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget-object v1, Ldaggero/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    const-string v2, "members/"

    invoke-static {p0, v0, v2, v1}, Ldaggero/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "@"

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "members/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x2f

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/16 v1, 0x3c

    .line 252
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method static getLazyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 198
    invoke-static {p0}, Ldaggero/internal/Keys;->startOfType(Ljava/lang/String;)I

    move-result v0

    .line 199
    sget-object v1, Ldaggero/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldaggero/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldaggero/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldaggero/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMembersKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "members/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSetKey(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-static {p1, p2}, Ldaggero/internal/Keys;->extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 94
    invoke-static {p0}, Ldaggero/internal/Keys;->boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    sget-object p1, Ldaggero/internal/Keys;->SET_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 100
    invoke-static {p0, p2, p1}, Ldaggero/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    const-string p0, ">"

    .line 101
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotated(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPlatformType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "java."

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static startOfType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "@"

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V
    .locals 4

    .line 141
    instance-of v0, p0, Ljava/lang/Class;

    const-string v1, "Uninjectable type "

    const-string v2, "[]"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 142
    check-cast p0, Ljava/lang/Class;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, v3}, Ldaggero/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    :cond_3
    instance-of p2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_6

    .line 155
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 156
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Ldaggero/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 157
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string p2, "<"

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_0
    array-length p2, p0

    if-ge v3, p2, :cond_5

    if-eqz v3, :cond_4

    const-string p2, ", "

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_4
    aget-object p2, p0, v3

    invoke-static {p2, p1, v0}, Ldaggero/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string p0, ">"

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :cond_6
    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz p2, :cond_7

    .line 167
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 168
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1, v3}, Ldaggero/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    .line 171
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
