.class public Lutils/DialogUtils$DialogCallBack;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutils/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 664
    .local p0, "this":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    return-void
.end method


# virtual methods
.method public onButton(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 680
    .local p0, "this":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<TT;>;"
    return-void
.end method

.method public onNegativeButton(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 674
    .local p0, "this":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<TT;>;"
    instance-of v0, p1, Landroid/content/DialogInterface;

    if-eqz v0, :cond_9

    .line 675
    check-cast p1, Landroid/content/DialogInterface;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 676
    :cond_9
    return-void
.end method

.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Landroid/content/DialogInterface;

    if-eqz v0, :cond_9

    .line 669
    check-cast p1, Landroid/content/DialogInterface;

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 671
    :cond_9
    return-void
.end method
