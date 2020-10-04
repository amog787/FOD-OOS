.class Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;
.super Lcom/android/server/textservices/TextServicesManagerInternal;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;


# direct methods
.method constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 284
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->access$800(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)Lcom/android/server/textservices/TextServicesManagerService;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->access$900(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method
