.class Lcom/android/server/usage/AppTimeLimitController$Lock;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lock"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppTimeLimitController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/AppTimeLimitController$1;

    .line 54
    invoke-direct {p0}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>()V

    return-void
.end method
