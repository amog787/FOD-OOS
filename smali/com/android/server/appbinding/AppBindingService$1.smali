.class Lcom/android/server/appbinding/AppBindingService$1;
.super Landroid/database/ContentObserver;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method constructor <init>(Lcom/android/server/appbinding/AppBindingService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 201
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 204
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0}, Lcom/android/server/appbinding/AppBindingService;->access$500(Lcom/android/server/appbinding/AppBindingService;)V

    .line 205
    return-void
.end method
