.class public Lcom/delan/app/germanybluetooth/bean/WeekTimeBean;
.super Ljava/lang/Object;
.source "WeekTimeBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private text:Ljava/lang/String;

.field private timeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/WeekTimeBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/WeekTimeBean;->timeList:Ljava/util/List;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/WeekTimeBean;->text:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTimeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/WeekTimeBean;->timeList:Ljava/util/List;

    .line 31
    return-void
.end method
