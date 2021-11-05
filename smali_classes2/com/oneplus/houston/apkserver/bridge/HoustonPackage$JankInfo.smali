.class final Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;
.super Ljava/lang/Object;
.source "HoustonPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JankInfo"
.end annotation


# instance fields
.field public mJankLevel:I

.field public mJankType:I

.field public mViewName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;


# direct methods
.method public constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 180
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mViewName:Ljava/lang/String;

    .line 182
    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mJankType:I

    .line 183
    iput p4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mJankLevel:I

    .line 184
    return-void
.end method
