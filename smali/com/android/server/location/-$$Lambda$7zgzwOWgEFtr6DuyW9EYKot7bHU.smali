.class public final synthetic Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/NtpTimeHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/NtpTimeHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;->f$0:Lcom/android/server/location/NtpTimeHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;->f$0:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    return-void
.end method
