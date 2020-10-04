.class public Lcom/android/server/role/RmInjector;
.super Ljava/lang/Object;
.source "RmInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUpdate()Z
    .locals 3

    .line 23
    const-string v0, ""

    const-string/jumbo v1, "ro.build.version.ota"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "curVersion":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.version.ota"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "lastVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
