.class public final Lcom/idelan/java/Util/RegularExpression;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEmailStyle(Ljava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 51
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 52
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 53
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static checkIDCardStyle(Ljava/lang/String;)Z
    .registers 5
    .param p0, "iDCard"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "^(\\d{15}$|^\\d{18}$|^\\d{17}(\\d|X|x))$"

    .line 79
    .local v1, "patrn":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 80
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static checkPasswordStyle(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "^[a-zA-Z0-9]{6,16}$"

    .line 25
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 26
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 27
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static checkPhoneStyle(Ljava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "^((13[0-9])|(14[5,7])|(15[0-9])|(17[0,6,7])|(18[0-3,5-9]))\\d{8}$"

    .line 64
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 65
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 66
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static checkRealName(Ljava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "(([\u4e00-\u9fa5]{2,7})|([a-zA-Z]{4,20}))"

    .line 38
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 39
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 40
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static checkURLStyle(Ljava/lang/String;)Z
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p0, :cond_11

    .line 87
    const-string v0, "(http|ftp|https):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&amp;:/~\\+#]*[\\w\\-\\@?^=%&amp;/~\\+#])?"

    .line 88
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 89
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 90
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 92
    .end local v0    # "check":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "regex":Ljava/util/regex/Pattern;
    :goto_10
    return v3

    :cond_11
    const/4 v3, 0x0

    goto :goto_10
.end method
