.class public Lcom/idelan/bean/XMLBean;
.super Ljava/lang/Object;
.source "XMLBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valse"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/idelan/bean/XMLBean;->key:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/idelan/bean/XMLBean;->value:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/idelan/bean/XMLBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/idelan/bean/XMLBean;->value:Ljava/lang/String;

    return-object v0
.end method
