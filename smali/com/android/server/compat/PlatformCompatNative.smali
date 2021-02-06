.class public Lcom/android/server/compat/PlatformCompatNative;
.super Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.source "PlatformCompatNative.java"


# instance fields
.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0
    .param p1, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 29
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 31
    return-void
.end method


# virtual methods
.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 46
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isChangeEnabledByUid(JI)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "uid"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    return v0
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 35
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 36
    return-void
.end method

.method public reportChangeByUid(JI)V
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "uid"    # I

    .line 40
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->reportChangeByUid(JI)V

    .line 41
    return-void
.end method
