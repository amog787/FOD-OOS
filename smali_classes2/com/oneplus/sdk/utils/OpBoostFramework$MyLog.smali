.class Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;
.super Ljava/lang/Object;
.source "OpBoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sdk/utils/OpBoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLog"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 163
    invoke-static {p0, p1}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/oneplus/sdk/utils/OpBoostFramework;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/oneplus/sdk/utils/OpBoostFramework;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/oneplus/sdk/utils/OpBoostFramework;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    return-void
.end method

.method private static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/oneplus/sdk/utils/OpBoostFramework;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/oneplus/sdk/utils/OpBoostFramework;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return-void
.end method
