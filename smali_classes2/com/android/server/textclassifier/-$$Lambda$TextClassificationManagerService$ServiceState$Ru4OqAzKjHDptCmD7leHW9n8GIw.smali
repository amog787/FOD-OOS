.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;

    invoke-direct {v0}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;-><init>()V

    sput-object v0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;->INSTANCE:Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryEvicted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->lambda$new$0(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V

    return-void
.end method
