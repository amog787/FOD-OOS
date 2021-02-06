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
    const-string v0, "ro.build.version.ota"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "curVersion":Ljava/lang/String;
    const-string v2, "persist.sys.version.ota"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "lastVersion":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    return v1

    .line 28
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
