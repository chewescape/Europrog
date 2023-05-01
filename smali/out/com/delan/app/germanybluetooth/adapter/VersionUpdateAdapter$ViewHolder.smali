.class public Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VersionUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public deviceTV:Landroid/widget/TextView;

.field public settingsColor:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const v0, 0x7f0d00f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;->deviceTV:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0d00f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;->settingsColor:Landroid/widget/TextView;

    .line 82
    return-void
.end method
