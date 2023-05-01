.class public Lutils/MyToastUtil;
.super Ljava/lang/Object;
.source "MyToastUtil.java"


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToastLong(Landroid/content/Context;I)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x1

    .line 45
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_15

    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    .line 51
    :goto_f
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void

    .line 48
    :cond_15
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 49
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_f
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 35
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 36
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    .line 41
    :goto_b
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    return-void

    .line 38
    :cond_11
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_b
.end method

.method public static showToastShort(Landroid/content/Context;I)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_15

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    .line 31
    :goto_f
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    return-void

    .line 28
    :cond_15
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 29
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_f
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 15
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 16
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    .line 21
    :goto_b
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    return-void

    .line 18
    :cond_11
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget-object v0, Lutils/MyToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_b
.end method
