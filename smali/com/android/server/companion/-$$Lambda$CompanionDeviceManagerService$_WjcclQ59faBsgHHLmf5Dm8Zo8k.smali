.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field private final synthetic f$0:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;->f$0:Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;->f$0:Lorg/xmlpull/v1/XmlSerializer;

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$updateAssociations$3(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V

    return-void
.end method
