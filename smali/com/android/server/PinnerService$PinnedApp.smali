.class final Lcom/android/server/PinnerService$PinnedApp;
.super Ljava/lang/Object;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PinnedApp"
.end annotation


# instance fields
.field active:Z

.field final mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PinnerService;

.field final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 977
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnedApp;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 978
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    .line 979
    invoke-static {p1}, Lcom/android/server/PinnerService;->access$1300(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iget v0, p0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 980
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/PinnerService;
    .param p2, "x1"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "x2"    # Lcom/android/server/PinnerService$1;

    .line 963
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method
