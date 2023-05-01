.class public Lcom/idelan/app/Util/KeyBoardUtil;
.super Ljava/lang/Object;
.source "KeyBoardUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeKeybord(Landroid/widget/EditText;Landroid/content/Context;)V
    .registers 5
    .param p0, "mEditText"    # Landroid/widget/EditText;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 39
    .line 40
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 42
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 43
    return-void
.end method

.method public static openKeybord(Landroid/widget/EditText;Landroid/content/Context;)V
    .registers 5
    .param p0, "mEditText"    # Landroid/widget/EditText;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 23
    .line 24
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 25
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 27
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 28
    return-void
.end method
