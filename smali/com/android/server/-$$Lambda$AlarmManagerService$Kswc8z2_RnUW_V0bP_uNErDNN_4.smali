.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/AlarmManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;->f$0:Lcom/android/server/AlarmManagerService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;->f$2:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;->f$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;->f$2:Landroid/util/MutableBoolean;

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/AlarmManagerService;->lambda$removeLocked$2$AlarmManagerService(Ljava/lang/String;Landroid/util/MutableBoolean;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p1

    return p1
.end method
