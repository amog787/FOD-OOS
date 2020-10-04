.class public final Lcom/android/server/LocationManagerService$Identity;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Identity"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field final mUid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    iput p1, p0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 1509
    iput p2, p0, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    .line 1510
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 1511
    return-void
.end method
