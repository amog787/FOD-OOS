.class public Lcom/oneplus/sdk/utils/OpConnor;
.super Ljava/lang/Object;
.source "OpConnor.java"


# static fields
.field private static final AM_CLASS:Ljava/lang/String; = "android.app.ActivityManager"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OpConnor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/sdk/utils/OpConnor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAggregateNext()[Ljava/lang/String;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
