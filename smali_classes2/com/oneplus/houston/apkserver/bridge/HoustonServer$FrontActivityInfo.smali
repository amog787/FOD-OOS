.class final Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;
.super Ljava/lang/Object;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrontActivityInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pid:I

.field uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->activityName:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->packageName:Ljava/lang/String;

    .line 292
    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->uid:I

    .line 293
    iput p4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->pid:I

    .line 294
    return-void
.end method
