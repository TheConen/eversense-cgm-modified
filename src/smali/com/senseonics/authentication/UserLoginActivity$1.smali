.class Lcom/senseonics/authentication/UserLoginActivity$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginActivity;->setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/authentication/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity$1;->this$0:Lcom/senseonics/authentication/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity$1;->this$0:Lcom/senseonics/authentication/UserLoginActivity;

    iget-object p1, p1, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
