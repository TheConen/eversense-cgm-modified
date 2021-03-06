.class public Lcom/senseonics/view/NonSelectionEditText;
.super Landroid/widget/EditText;
.source "NonSelectionEditText.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/senseonics/view/NonSelectionEditText;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/senseonics/view/NonSelectionEditText;->blockContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object p1, p0, Lcom/senseonics/view/NonSelectionEditText;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/senseonics/view/NonSelectionEditText;->blockContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/senseonics/view/NonSelectionEditText;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/senseonics/view/NonSelectionEditText;->blockContextMenu()V

    return-void
.end method

.method private blockContextMenu()V
    .locals 1

    .line 40
    new-instance v0, Lcom/senseonics/view/DisableCopyPasteActionModeCallback;

    invoke-direct {v0}, Lcom/senseonics/view/DisableCopyPasteActionModeCallback;-><init>()V

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NonSelectionEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/senseonics/view/NonSelectionEditText;->setLongClickable(Z)V

    .line 42
    new-instance v0, Lcom/senseonics/view/NonSelectionEditText$1;

    invoke-direct {v0, p0}, Lcom/senseonics/view/NonSelectionEditText$1;-><init>(Lcom/senseonics/view/NonSelectionEditText;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NonSelectionEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setInsertionDisabled()V
    .locals 4

    .line 62
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android.widget.Editor"

    .line 66
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mInsertionControllerEnabled"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public isSuggestionsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/senseonics/view/NonSelectionEditText;->setInsertionDisabled()V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
