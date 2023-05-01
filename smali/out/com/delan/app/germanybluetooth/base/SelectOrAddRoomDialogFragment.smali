.class public Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectOrAddRoomDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;
    }
.end annotation


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

.field private callback:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newRoomEt:Landroid/widget/EditText;

.field private selectedCb:Landroid/widget/CheckBox;

.field private selectedPosition:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->adapter:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->newRoomEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->callback:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->newRoomEt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedCb:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->adapter:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->notifyData(Ljava/util/List;I)V

    .line 121
    return-void

    .line 119
    :cond_1e
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 42
    const v5, 0x7f0d0077

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, "titleTv":Landroid/widget/TextView;
    const v5, 0x7f0d0080

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 44
    .local v3, "roomLv":Landroid/widget/ListView;
    const v5, 0x7f0d00ab

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->newRoomEt:Landroid/widget/EditText;

    .line 45
    const v5, 0x7f0d007f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const v5, 0x7f0d00aa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedCb:Landroid/widget/CheckBox;

    .line 47
    const v5, 0x7f0d011c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "addNewRoomGv":Landroid/view/View;
    const v5, 0x7f0d011d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, "cancelBtn":Landroid/widget/TextView;
    const v5, 0x7f0d011e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, "confirmBtn":Landroid/widget/TextView;
    const v5, 0x7f06007a

    invoke-virtual {p0, v5}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v5, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->adapter:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    .line 53
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->adapter:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    new-instance v5, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;-><init>(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    new-instance v5, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;-><init>(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v5, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$3;-><init>(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v5, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$4;-><init>(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->setList(Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method public setDialogClickListener(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;)V
    .registers 2
    .param p1, "callback"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->callback:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;

    .line 134
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->list:Ljava/util/ArrayList;

    .line 125
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 126
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    .line 130
    :goto_d
    return-void

    .line 128
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->selectedPosition:I

    goto :goto_d
.end method
