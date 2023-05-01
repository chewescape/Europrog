.class public Lcom/idelan/java/Util/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/java/Util/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "result"    # I

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p1, p0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->result:I

    .line 240
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # I
    .param p2, "successMsg"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p1, p0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->result:I

    .line 244
    iput-object p2, p0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 246
    return-void
.end method
