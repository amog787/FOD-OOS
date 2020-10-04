.class final Lcom/android/server/appop/AppOpsService$ChangeRec;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChangeRec"
.end annotation


# instance fields
.field final op:I

.field final pkg:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "_op"    # I
    .param p2, "_uid"    # I
    .param p3, "_pkg"    # Ljava/lang/String;

    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    iput p1, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 1607
    iput p2, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    .line 1608
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1609
    return-void
.end method
