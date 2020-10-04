.class Lcom/android/server/display/color/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 294
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 297
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$400(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$502(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 301
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$600(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 305
    :cond_0
    return-void
.end method
