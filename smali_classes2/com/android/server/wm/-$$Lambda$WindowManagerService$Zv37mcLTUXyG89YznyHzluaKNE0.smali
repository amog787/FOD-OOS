.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/IAssistDataReceiver;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;->f$0:Landroid/app/IAssistDataReceiver;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;->f$0:Landroid/app/IAssistDataReceiver;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lambda$requestAssistScreenshot$3(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    return-void
.end method
