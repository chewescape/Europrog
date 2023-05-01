.class public interface abstract Lcom/idelan/xml/parser/BaseDeviceObjectParser;
.super Ljava/lang/Object;
.source "BaseDeviceObjectParser.java"


# virtual methods
.method public abstract parse(Ljava/io/InputStream;)Lcom/idelan/bean/BaseDeviceBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract serialize(Lcom/idelan/bean/BaseDeviceBean;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
