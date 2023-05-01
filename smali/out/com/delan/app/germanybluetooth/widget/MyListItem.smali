.class public Lcom/delan/app/germanybluetooth/widget/MyListItem;
.super Ljava/lang/Object;
.source "MyListItem.java"


# instance fields
.field private name:Ljava/lang/String;

.field private pcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/MyListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/MyListItem;->pcode:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/MyListItem;->name:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setPcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "pcode"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/MyListItem;->pcode:Ljava/lang/String;

    .line 17
    return-void
.end method
