.class public Lcom/android/server/devicepolicy/DevicePolicyManagerServiceInjector;
.super Ljava/lang/Object;
.source "DevicePolicyManagerServiceInjector.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DevicePolicyManagerServiceInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustMaximumFailedPasswordsForWipe(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x115

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    return v2

    .line 35
    :cond_0
    const-string v0, "DevicePolicyManagerServiceInjector"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5090020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 43
    .local v1, "custMaximumFailedPasswordsForWipe":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default max failed password attemp for wipe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v1

    .line 36
    .end local v1    # "custMaximumFailedPasswordsForWipe":I
    :cond_2
    :goto_0
    const-string v1, "getCustMaximumFailedPasswordsForWipe: context is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v2
.end method
