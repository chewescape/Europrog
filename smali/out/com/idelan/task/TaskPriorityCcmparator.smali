.class public Lcom/idelan/task/TaskPriorityCcmparator;
.super Ljava/lang/Object;
.source "TaskPriorityCcmparator.java"


# static fields
.field private static IS_BIG_PRIORITY_FIRST:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/idelan/task/TaskPriorityCcmparator;->IS_BIG_PRIORITY_FIRST:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(Lcom/idelan/task/Task;Lcom/idelan/task/Task;)I
    .registers 5
    .param p0, "src"    # Lcom/idelan/task/Task;
    .param p1, "o"    # Lcom/idelan/task/Task;

    .prologue
    .line 22
    const/4 v0, -0x1

    .line 24
    .local v0, "result":I
    sget-boolean v1, Lcom/idelan/task/TaskPriorityCcmparator;->IS_BIG_PRIORITY_FIRST:Z

    if-eqz v1, :cond_1c

    .line 25
    invoke-virtual {p1}, Lcom/idelan/task/Task;->getPriority()I

    move-result v1

    invoke-virtual {p0}, Lcom/idelan/task/Task;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    .line 30
    :goto_f
    if-nez v0, :cond_1b

    .line 31
    invoke-virtual {p0}, Lcom/idelan/task/Task;->getSeqNum()I

    move-result v1

    invoke-virtual {p1}, Lcom/idelan/task/Task;->getSeqNum()I

    move-result v2

    sub-int v0, v1, v2

    .line 34
    :cond_1b
    return v0

    .line 27
    :cond_1c
    invoke-virtual {p0}, Lcom/idelan/task/Task;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/idelan/task/Task;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_f
.end method
