.class public Lcom/android/server/location/CallerIdentity;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 29
    iput p2, p0, Lcom/android/server/location/CallerIdentity;->mPid:I

    .line 30
    iput-object p3, p0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 31
    return-void
.end method
