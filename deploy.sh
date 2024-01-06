echo "running sh file😊"

      run: sudo docker pull -a ${{ secrets.DOCKERHUB_USERNAME }}/clockbox
     
      run: sudo docker run -dp 8080:8080 ${{ secrets.DOCKERHUB_USERNAME }}/clockbox:latest