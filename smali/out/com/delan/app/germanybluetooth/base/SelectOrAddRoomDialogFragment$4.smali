.class Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;
.super Ljava/lang/Object;
.source "SelectOrAddRoomDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 83
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$000(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 84
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$400(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "room":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 86
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060056

    invoke-static {v2, v3}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 109
    .end local v0    # "room":Ljava/lang/String;
    :cond_33
    :goto_33
    return-void

    .line 89
    .restart local v0    # "room":Ljava/lang/String;
    :cond_34
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7f

    .line 90
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "str":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 92
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    const v6, 0x7f060077

    invoke-virtual {v5, v6}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_33

    .line 97
    .end local v1    # "str":Ljava/lang/String;
    :cond_7f
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_d5

    .line 98
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f06002c

    invoke-static {v2, v3}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto :goto_33

    .line 102
    .end local v0    # "room":Ljava/lang/String;
    :cond_95
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$200(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)I

    move-result v4

    if-eq v4, v6, :cond_33

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$200(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 104
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$200(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .restart local v0    # "room":Ljava/lang/String;
    :cond_d5
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$500(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 107
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$500(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;

    move-result-object v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$200(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)I

    move-result v5

    if-ne v5, v6, :cond_f6

    :goto_f1
    invoke-interface {v4, v0, v2}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;->onConfirmClicked(Ljava/lang/String;Z)V

    goto/16 :goto_33

    :cond_f6
    move v2, v3

    goto :goto_f1
.end method
