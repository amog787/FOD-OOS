.class Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 400
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 403
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 404
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v3, "imperceptible_kill_exempt_packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "min_assoc_log_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "max_cached_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "force_bg_check_on_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "oomadj_update_policy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v3, "default_background_activity_starts_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v3, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 428
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$600(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 429
    goto :goto_2

    .line 425
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$500(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 426
    goto :goto_2

    .line 422
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$400(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 423
    goto :goto_2

    .line 418
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$300(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 419
    goto :goto_2

    .line 415
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$200(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 416
    goto :goto_2

    .line 412
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$100(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 413
    goto :goto_2

    .line 409
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$000(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 410
    nop

    .line 433
    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 434
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_7
        -0x6a37b8d0 -> :sswitch_6
        -0x53dc231d -> :sswitch_5
        -0x476d69e0 -> :sswitch_4
        -0x47037762 -> :sswitch_3
        -0x41254a05 -> :sswitch_2
        -0x3099a4da -> :sswitch_1
        -0x2e7b9c6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
