.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/os/IProgressListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$2:Z

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$3:Landroid/os/IProgressListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$2:Z

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;->f$3:Landroid/os/IProgressListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->lambda$startUser$8$UserController(IZLandroid/os/IProgressListener;)V

    return-void
.end method
